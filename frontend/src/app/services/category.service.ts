import { Injectable } from "@angular/core";
import {
  CategoryModelServer,
  ServerResponse,
} from "src/app/models/category.model";
import { environment } from "../../environments/environment";
import { Observable } from "rxjs";
import { HttpClient } from "@angular/common/http";

@Injectable({
  providedIn: "root",
})
export class CategoryService {
  private SERVER_URL = environment.SERVER_URL;

  public categories: CategoryModelServer[];

  constructor(private http: HttpClient) {}

  public getAllCategories(): Observable<ServerResponse> {
    return this.http.get<ServerResponse>(
      this.SERVER_URL + "/categories/all-categories"
    );
    
  }

  public getCategories() : CategoryModelServer[]{
    return this.categories;
  }

  public setCategories(categories) : void{
    this.categories = categories;
  }
}