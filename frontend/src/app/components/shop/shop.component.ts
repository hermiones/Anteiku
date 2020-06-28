import { Component, OnInit } from '@angular/core';
import {ProductService} from '../../services/product.service';
import {Router} from '@angular/router';
import {ProductModelServer, ServerResponse} from '../../models/product.model';
import {CartService} from '../../services/cart.service';
import { CategoryService } from '@app/services/category.service';
import { VarietyService } from '@app/services/variety.service';
import { CategoryModelServer } from '@app/models/category.model';
import { VarietyModelServer } from '@app/models/variety.model';
@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: ['./shop.component.scss']
})
export class ShopComponent implements OnInit {
products: ProductModelServer[] = [];

  public categoryAssociatedProducts: any;

  public varietyAssociatedProducts: any;

  public activeCategoryTab: number;

  public categories: CategoryModelServer[];

 public varieties: VarietyModelServer[];

  constructor(private productService: ProductService,
              private cartService: CartService,
              private router: Router,
              private categoryService: CategoryService,
              private varietyService: VarietyService) { }

  ngOnInit(): void {
   this.categoryAssociatedProducts = [];
    this.varietyAssociatedProducts = [];
    this.productService.getAllProducts().subscribe((prods: ServerResponse) => {
      this.products = prods.products;
      
    });

    this.retrieveCategories();
     this.retrieveVarieties();
  }




  selectProduct(id: number) {
    this.router.navigate(['/product', id]).then();
  }

AddToCart(id: number) {
    this.cartService.AddProductToCart(id);
  }


  public retrieveCategories(){
    this.categories = this.categoryService.getCategories();
    if(!this.categories || this.categories?.length == 0){
      this.categoryService.getAllCategories().subscribe((data) => {
        this.categoryService.setCategories(data.categories);
        this.categories = this.categoryService.getCategories();
        this.activeCategoryTab = this.categories[0].id;
        this.retrieveCategoryAssociatedProducts();  
      });
    }else{
      this.retrieveCategoryAssociatedProducts();  
    }
  }


 public retrieveVarieties(){
    this.varieties = this.varietyService.getVarieties();
    if(!this.varieties || this.varieties?.length == 0){
      this.varietyService.getAllVarieties().subscribe((data) => {
        this.varietyService.setVarieties(data.varieties);
        this.varieties = this.varietyService.getVarieties();
        
      this.retrieveVarietyAssociatedProducts();  
      });
    }else{
      this.retrieveVarietyAssociatedProducts();  
    }
  }













  public retrieveCategoryAssociatedProducts(){
    this.categories?.forEach(element => {
      this.categoryAssociatedProducts[element.id] = [];
      this.productService.getProductsFromCategory(element.title).subscribe((data) => {
        this.categoryAssociatedProducts[element.id] = data.products;
      });
    });
  }



 public retrieveVarietyAssociatedProducts(){
    this.varieties?.forEach(element => {
      this.varietyAssociatedProducts[element.id] = [];
      this.productService.getProductsFromVariety(element.title).subscribe((data) => {
        this.varietyAssociatedProducts[element.id] = data.products;
      });
    });
  }






  public activateTab(categoryId){
    this.activeCategoryTab = categoryId;
  }
}
