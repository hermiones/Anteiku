import { Component, OnInit } from '@angular/core';
import {ProductModelServer, ServerResponse} from "@app/models/product.model";
import {ProductService} from "@app/services/product.service";
import {CartService} from "@app/services/cart.service";
import {ActivatedRoute, Router} from "@angular/router";
import {Observable, Subject} from "rxjs";
import {map} from "rxjs/operators";

@Component({
  selector: 'app-search-results',
  templateUrl: './search-results.component.html',
  styleUrls: ['./search-results.component.scss']
})
export class SearchResultsComponent implements OnInit {


  products: ProductModelServer[] = [];
  searchTerm: Observable<string>;


  constructor(private productService: ProductService,
              private cartService: CartService,
              private activatedRoute: ActivatedRoute,
              private router: Router) { }

  ngOnInit(): void {
    this.searchTerm = this.activatedRoute.queryParams.pipe(map(params => params['term']));

    if(!this.searchTerm) {
      this.productService.getAllProducts().subscribe((prods: ServerResponse) => {
        this.products = prods.products;
      });
    } else {
      this.searchTerm.subscribe((term) => {
        this.productService.searchProducts(term).subscribe((response: ServerResponse) => {
          this.products = response.products;
        });
      });
    }

  }

  selectProduct(id: number) {
    this.router.navigate(['/product', id]).then();
  }

  AddToCart(id: number) {
    this.cartService.AddProductToCart(id);
  }
}
