import { Component, OnInit } from "@angular/core";
import { ProductService } from "src/app/services/product.service";
import { ProductModelServer } from "src/app/models/product.model";
import {Router} from "@angular/router";
import {UserService} from '@app/services/user.service';
import {ToastrService} from 'ngx-toastr';

@Component({
  selector: "app-admin",
  templateUrl: "./admin.component.html",
  styleUrls: ["./admin.component.scss"],
})
export class AdminComponent implements OnInit {
  public products: ProductModelServer[];
  public productCount: number;


  constructor(private productService: ProductService,
              public router: Router,
              private toast: ToastrService,
              private userService: UserService,
              ) {}

  ngOnInit(): void {
    this.retriveProducts();
  }

  private retriveProducts() {
    this.productService.getAllProducts().subscribe((data) => {
      this.productCount = data.count;
      this.products = data.products;
      console.log(this.products);
    });
  }

  public edit(productId) {
    this.router.navigate(['/admin/edit/product', productId]).then();
  }

  public delete(productId) {
    alert("Delete Clicked");
    this.productService.deleteProduct(productId).subscribe((data) => {
      this.products = this.products.filter(
        (element) => {
          console.log(element);
          return element.id !== productId;
        },
        (error) => {
          this.toast.error(`Item Not Deleted`, 'Product Couldn\'t be Deleted', {
            timeOut: 1500,
            progressBar: true,
            progressAnimation: 'increasing',
            positionClass: 'toast-top-right'
          });
        }
      );
      this.toast.success(`Item Deleted`, 'Product Is Deleted', {
        timeOut: 1500,
        progressBar: true,
        progressAnimation: 'increasing',
        positionClass: 'toast-top-right'
      });
    });
  }
  logout() {
    this.userService.logout();
  }
}