import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { environment } from '../../environments/environment';
import { Observable } from 'rxjs';
import { ProductModelServer, ServerResponse } from '../models/product.model';

@Injectable({
  providedIn: 'root',
})
export class ProductService {
  private SERVER_URL = environment.SERVER_URL;
  constructor(private http: HttpClient) {}

  /* This is to fetch all products from the backend server */
  getAllProducts(numberOfResults = 100): Observable<ServerResponse> {
    return this.http.get<ServerResponse>(this.SERVER_URL + '/products', {
      params: {
        limit: numberOfResults.toString(),
      },
    });
  }

  searchProducts(searchTerm: string): Observable<ServerResponse> {
    return this.http.get<ServerResponse>(this.SERVER_URL + '/products/search', {
      params: {
        term: searchTerm
      }
    });
  }

  /* GET SINGLE PRODUCT FROM SERVER*/
  getSingleProduct(id: number): Observable<ProductModelServer> {
    return this.http.get<ProductModelServer>(
      this.SERVER_URL + '/products/' + id
    );
  }

  /*GET PRODUCTS FROM ONE CATEGORY */
  getProductsFromCategory(catName: string): Observable<ServerResponse> {
    return this.http.get<ServerResponse>(
      this.SERVER_URL + '/products/category/' + catName
    );
  }





  /*GET PRODUCTS FROM ONE VARIETY */
  getProductsFromVariety(varName: string): Observable<ServerResponse> {
    return this.http.get<ServerResponse>(
      this.SERVER_URL + '/products/variety/' + varName
    );
  }

















  /** DELETE PRODUCT */
  deleteProduct(id: number): Observable<any> {
    return this.http.delete<any>(this.SERVER_URL + '/products/delete/' + id);
  }

  /** INSERT A PRODUCT */
  insertProduct(formData: any): Observable<any> {
    return this.http.post<any>(this.SERVER_URL + '/products/add-product', {
      ...formData,
    });
  }


/** contact*/
  insertdetails(formData: any): Observable<any> {
    return this.http.post<any>(this.SERVER_URL + '/products/contact', {
      ...formData,
    });
  }






  
  /** UPDATE A PRODUCT */
  updateProduct(id: number, formData: any): Observable<any> {
    return this.http.put<any>(this.SERVER_URL + `/products/edit/${id}`, {
      ...formData,
    });
  }
}



