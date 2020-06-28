import {Component, OnInit} from '@angular/core';
import {NgForm} from '@angular/forms';
import {AuthService} from 'angularx-social-login';
import {ActivatedRoute, Router} from '@angular/router';
import {UserService} from '../../services/user.service';
import {EmailValidator, FormBuilder, FormGroup, Validators} from '@angular/forms';
import {CheckEmailService} from '../../validators/check-email.service';
import {map} from 'rxjs/operators';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  providers: [EmailValidator]
})
export class LoginComponent implements OnInit {
  email: string;
  password: string;
  loginMessage: string;
  userRole: number;
  registrationForm: FormGroup;
  // tslint:disable-next-line:max-line-length
  private emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\.com$";
  comparePassword: boolean;
  registrationMessage: string;

  constructor(private authService: AuthService,
             private fb: FormBuilder,
              private checkEmailService: CheckEmailService,
              private router: Router,
              private userService: UserService,
              private route: ActivatedRoute) {
                this.registrationForm = fb.group({
                  fname: ['', [Validators.required, Validators.minLength(3)]],
                  lname: ['', [Validators.required, Validators.minLength(3)]],
                  email: ['', [Validators.required, Validators.pattern(this.emailPattern)],
                    [this.checkEmailService.emailValidate()]
                  ],
                  password: ['', [Validators.required, Validators.minLength(6)]],
                  confirmPassword: ['', [Validators.required, Validators.minLength(6)]],
                });
  }

  ngOnInit(): void {
    this.userService.authState$.subscribe(authState => {
      if (authState) {
        this.router.navigateByUrl(this.route.snapshot.queryParams.returnUrl || '/profile');

      } else {
        this.router.navigateByUrl('/login');
      }
    });
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');
    
    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });
    
    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });
    
    this.registrationForm.valueChanges
    .pipe(map((controls) => {
      return this.formControls.confirmPassword.value === this.formControls.password.value;
    }))
    .subscribe(passwordState => {
      console.log(passwordState);
      this.comparePassword = passwordState;
    });

  }

  get formControls() {
    return this.registrationForm.controls;
  }
  signInWithGoogle() {
    this.userService.googleLogin();
  }
  registerUser() {

    if (this.registrationForm.invalid) {
      return;
    }

    // @ts-ignore
    this.userService.registerUser({...this.registrationForm.value}).subscribe((response: { message: string }) => {
      this.registrationMessage = response.message;
    });

    this.registrationForm.reset();
  }

  login(form: NgForm) {
    const email = this.email;
    const password = this.password;

    if (form.invalid) {
      return;
    }

    form.reset();
    this.userService.loginUser(email, password);

    this.userService.loginMessage$.subscribe(msg => {
      this.loginMessage = msg;
      setTimeout(() => {
        this.loginMessage = 'The email/password is invalid';
      }, 2000);
    });


  }
}