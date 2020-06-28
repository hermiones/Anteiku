import {Component, OnInit} from '@angular/core';
import {AuthService, SocialUser} from 'angularx-social-login';
import {ResponseModel, UserService} from '../../services/user.service';
import {Router} from '@angular/router';
import {map} from 'rxjs/operators';
import { CategoryService } from '@app/services/category.service';
import { CategoryModelServer } from '@app/models/category.model';
import {CartService} from '@app/services/cart.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {
  myUser: any;
  public categories: CategoryModelServer[];
userId;
model: any = {};

  constructor(private cartService: CartService,private authService: AuthService,
              private userService: UserService,
              private categoryService: CategoryService,
              private router: Router) {
  }

  ngOnInit(): void {
    this.userService.userData$
      .pipe(
        map((user: SocialUser | ResponseModel) => {
          if (user instanceof SocialUser || user.type === 'social') {
            return {
              ...user,
             

            };
          } else {
            return user;
          }
        })
      )
      .subscribe((data: ResponseModel | SocialUser) => {
        this.myUser = data;
      });
      
      this.retrieveCategories();
      this.userService.userData$.subscribe((data: any) => {
        // @ts-ignore
        this.userId = data.userId || data.id;
        const { email } = data;
        this.userService.GetUserId(email).toPromise().then((data: any) => {
          this.userId = data.user.id || null;
          console.log(this.userId);
        });
      });
      this.cartService.GetUserInfo(this.userId).toPromise().then((data: any) => {
        this.model.address = data?.Address;
        this.model.city = data?.city;
        this.model.country = data?.country;
        this.model.zip = data?.Zipcode;
        this.model.phone = data?.Telephone;
        this.model.email = data?.email;
        this.model.firstName = data?.fname;
        this.model.lastName = data?.lname;
        this.model.email = data?.email;
        this.model.note = data?.Order_notes;
      });
  }
  
  public retrieveCategories(){
    this.categories = this.categoryService.getCategories();
    if(!this.categories || this.categories?.length == 0){
      this.categoryService.getAllCategories().subscribe((data) => {
        this.categoryService.setCategories(data.categories);
        this.categories = this.categoryService.getCategories();
        
         
      });
    
       
    
  }}


  logout() {
    this.userService.logout();
  }
}