import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from "@angular/forms";
import { ProductService } from "@app/services/product.service";
import { Router } from "@angular/router";
import {ToastrService} from 'ngx-toastr';

@Component({
  selector: 'app-contact-us',
  templateUrl: './contact-us.component.html',
  styleUrls: ['./contact-us.component.scss']
})
export class ContactUsComponent implements OnInit {
  public productForm;

  constructor(
    private formBuilder: FormBuilder,
    private productService: ProductService,
    private toast: ToastrService,
    private router: Router
  ) { 
    
  }

  ngOnInit(): void {
    this.buildProductForm();
  }
  private buildProductForm() {
    this.productForm = this.formBuilder.group({
      name: ["", [Validators.required]],
      email: ["", [Validators.required]]
      


    });
  }
  
  public insertContact() {
    if (this.productForm.invalid) return;
    this.productService.insertdetails({ ...this.productForm.value }).subscribe(
      (data) => {
        console.log(data);
        this.toast.success(`New Info`, 'Information Is Added', {
          timeOut: 1500,
          progressBar: true,
          progressAnimation: 'increasing',
          positionClass: 'toast-top-right'
        });
        this.router.navigateByUrl("/home");
      },
      (error) => {
        alert("product could not be stored");
      }
    );
  }
}