import {AfterViewInit, Component, OnInit, ViewChild, NgModule} from '@angular/core';
import {ProductService} from '../../services/product.service';
import {ActivatedRoute, ParamMap, Params, Router} from '@angular/router';
import {map} from 'rxjs/operators';
import { ProductModelServer } from '@app/models/product.model';
import {ToastrService} from 'ngx-toastr';

declare let $: any;

@Component({
  selector: 'app-product',
  templateUrl: './admin.edit.component.html',
  styleUrls: ['./admin.edit.component.scss']
})
export class AdminEditComponent implements OnInit, AfterViewInit {
  public product: ProductModelServer;
  private id: number;
  thumbImages: any[] = [];

  constructor(private productService: ProductService,
              private route: ActivatedRoute,
              private toast: ToastrService,
              private router: Router) {
  }

  async ngOnInit(): Promise<void> {
    this.route.params.subscribe((params: Params) => this.id = params['id']);
    await this.route.paramMap
      .pipe(
        map((param: ParamMap) => {
          // @ts-ignore
          return param.params.id;
        })
      )
      .subscribe(prodId => {
        this.id = prodId;
        this.productService.getSingleProduct(this.id).subscribe(prod => {
          this.product = prod;
          console.log(prod);
          this.thumbImages = prod.images.split(';');
          console.log(this.thumbImages);

        });
      });
  }

  ngAfterViewInit(): void {
// Product Main img Slick
    $('#product-main-img').slick({
      infinite: true,
      speed: 300,
      dots: false,
      arrows: true,
      fade: true,
      asNavFor: '#product-imgs',
    });

    // Product imgs Slick
    $('#product-imgs').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      arrows: true,
      centerMode: true,
      focusOnSelect: true,
      centerPadding: 0,
      vertical: true,
      asNavFor: '#product-main-img',
      responsive: [{
        breakpoint: 991,
        settings: {
          vertical: false,
          arrows: false,
          dots: true,
        }
      },
      ]
    });

    // Product img zoom
    // tslint:disable-next-line:prefer-const
    const zoomMainProduct = document.getElementById('product-main-img');
    if (zoomMainProduct) {
      $('#product-main-img .product-preview').zoom();
    }
  }

  edit() {
    const newProduct = {
      title: this.product.name,
      description: this.product.description,
      price: this.product.price,
      quantity: this.product.quantity,
      image:this.product.image,
      images:this.product.images,
      short_desc:this.product.short_desc,
      add_desc:this.product.add_desc
    }
    this.productService.updateProduct(this.id, newProduct).subscribe((result: any) => {
      if (result === 1) {
      
        this.toast.success(`Success`, 'Update Succesful', {
          timeOut: 1500,
          progressBar: true,
          progressAnimation: 'increasing',
          positionClass: 'toast-top-right'
        });
      } else {
        
        this.toast.error(`Failure`, 'Update Unsuccessful', {
          timeOut: 1500,
          progressBar: true,
          progressAnimation: 'increasing',
          positionClass: 'toast-top-right'
        });
      }
      this.router.navigate(['/admin']).then();
    });
  }
  isValidToEdit(){
    const isValid = 
      this.product.name && this.product.name.length > 0 && 
      this.product.description && this.product.description.length > 0 && 
      this.product.short_desc && this.product.short_desc.length > 0 && 
      this.product.price && this.product.price.toString().length > 0 &&
      this.product.quantity && this.product.quantity.toString().length > 0 &&
      this.product.image && this.product.image.length > 0 &&
      this.product.images && this.product.images.length > 0;
    return !isValid;
  }
}