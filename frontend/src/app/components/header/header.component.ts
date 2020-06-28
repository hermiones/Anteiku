import {Component, OnInit} from '@angular/core';
import {CartModelServer} from '../../models/cart.model';
import {CartService} from '../../services/cart.service';
import {UserService} from '../../services/user.service';
import {ActivatedRoute, Router} from "@angular/router";
import {Observable} from "rxjs";
import {map} from "rxjs/operators";

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  cartData: CartModelServer;
  cartTotal: number;
  authState: boolean;

  searchTerm: Observable<string>;

  constructor(public cartService: CartService,
              public userService: UserService,
              private activatedRoute: ActivatedRoute,
              private router: Router
  ) {
  }

  ngOnInit(): void {
    this.searchTerm = this.activatedRoute.queryParams.pipe(map(params => params['term']));

    this.cartService.cartTotal$.subscribe(total => this.cartTotal = total);

    this.cartService.cartData$.subscribe(data => this.cartData = data);

    this.userService.authState$.subscribe(authState => this.authState = authState);
  }

  async search(term: string) {
    if(typeof term != "string" || term.trim().length == 0) {
      await this.router.navigate(['/'], {
        queryParams: {
          term: null
        }
      });
    } else {
      await this.router.navigate(['/search'], {
        queryParams: {
          term
        }
      });
    }

  }

}
