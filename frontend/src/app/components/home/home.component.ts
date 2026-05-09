import { Component, OnInit } from '@angular/core';
import {ProductService} from '../../services/product.service';
import {Router} from '@angular/router';
import {ProductModelServer, ServerResponse} from '../../models/product.model';
import {CartService} from '../../services/cart.service';
import { CategoryService } from '@app/services/category.service';
import { VarietyService } from '@app/services/variety.service';
import { CategoryModelServer } from '@app/models/category.model';
import { VarietyModelServer } from '@app/models/variety.model';
import { OwlOptions } from 'ngx-owl-carousel-o';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  show=true;

  products: ProductModelServer[] = [];

  public featuredCategories = [
    {
      title: 'Ramen',
      accent: 'Savory bowls',
      description: 'Steamy broths, tender noodles, and premium toppings for late-night cravings.',
      image: 'assets/img/crsl2.jpg'
    },
    {
      title: 'Burgers',
      accent: 'Modern comfort',
      description: 'Rich savory patties and delicate buns elevated with Japanese flair.',
      image: 'assets/img/crsl3.jpg'
    },
    {
      title: 'Drinks',
      accent: 'Crafted sips',
      description: 'Warm teas, classic sodas, and chilled creations for every mood.',
      image: 'assets/img/crsl4.jpg'
    },
    {
      title: 'Desserts',
      accent: 'Sweet rituals',
      description: 'Minimal and elegant treats with moody textures and rich flavor.',
      image: 'assets/img/crsl5.jpg'
    }
  ];

  public testimonials = [
    {
      name: 'Mika Tanaka',
      role: 'Food Critic',
      quote: 'Anteiku feels like a secret ramen bar in the heart of Tokyo, soft lights and bold taste in every bowl.'
    },
    {
      name: 'Arjun S.',
      role: 'Night Owl',
      quote: 'The atmosphere is cinematic, the menu is premium, and the street café energy is utterly addictive.'
    },
    {
      name: 'Rina K.',
      role: 'Cafe Lover',
      quote: 'A beautiful modern take on Japanese comfort food — dark, warm, and effortlessly elegant.'
    }
  ];

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

  scrollToSection(sectionId: string) {
    const element = document.getElementById(sectionId);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  }
  
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
    customOptions: OwlOptions = {
      mouseDrag: false,
      touchDrag: false,
      pullDrag: false,
      dots: false,
      items: 4,
      navText: ['< Prev', 'Next >'],
      nav: true,
      responsive: {
        0: {
          items: 1
        },
        400: {
          items: 1
        },
        740: {
          items: 1
        },
        940: {
          items: 1
        }
      },
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