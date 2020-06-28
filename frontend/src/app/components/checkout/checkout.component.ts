import {Component, OnInit} from '@angular/core';
import {CartService} from '@app/services/cart.service';
import {OrderService} from '@app/services/order.service';
import {Router} from '@angular/router';
import {NgxSpinnerService} from 'ngx-spinner';
import {CartModelServer} from '@app/models/cart.model';
import {UserService} from '@app/services/user.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent implements OnInit {

  cartTotal: number;
  cartData: CartModelServer;
  userId;
  model: any = {};

  constructor(private cartService: CartService,
              private orderService: OrderService,
              private router: Router,
              private spinner: NgxSpinnerService,
              private userService: UserService
  ) {
  }

  ngOnInit(): void {
    this.cartService.cartData$.subscribe(data => this.cartData = data);
    this.cartService.cartTotal$.subscribe(total => this.cartTotal = total);
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

  onCheckout() {
    if (this.cartTotal > 0 && this.isValidToCheckout()) {
      this.spinner.show().then(p => {
        this.cartService.CheckoutFromCart(this.userId, this.model);
      });
    }
  }

  isValidToCheckout() {
    return (
    this.model.firstName && this.model.firstName.length > 1 && 
    this.model.lastName && this.model.lastName.length > 1 && 
    this.model.address && this.model.address.length > 9 && 
      this.model.city && this.model.city.length > 2 && 
      this.model.country && this.model.country.length > 2 && 
      this.model.zip &&
      this.model.phone && this.model.phone.length > 9);
  }
}