import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProductComponent } from './components/product/product.component';
import { CartComponent } from './components/cart/cart.component';
import { CheckoutComponent } from './components/checkout/checkout.component';
import { ThankyouComponent } from './components/thankyou/thankyou.component';
import { LoginComponent } from './components/login/login.component';
import { ProfileComponent } from './components/profile/profile.component';
import { ProfileGuard } from './guard/profile.guard';

import { HomeComponent } from './components/home/home.component';
import { FAQComponent } from './components/faq/faq.component';
import { ShopComponent } from './components/shop/shop.component';
import { AboutUsComponent } from './components/about-us/about-us.component';

import { ContactUsComponent } from './components/contact-us/contact-us.component';
import { HomeLayoutComponent } from './components/home-layout/home-layout.component';
import { AdminComponent } from '@app/components/admin/admin.component';
// @ts-ignore
import { AdminEditComponent } from '@app/components/admin.edit/admin.edit.component';
import { ProductFormComponent } from './components/product-form/product-form.component';
import {SearchResultsComponent} from '@app/components/search-results/search-results.component';
import {AdminGuard} from '@app/guard/admin.guard';

const routes: Routes = [
  // Define routes for the landing / home page, create a separate component for the layout of home page
  // put only header, footer and router-outlet there
  {
    path: '',
    component: HomeLayoutComponent,
    children: [
      {
        path: '',
        component: HomeComponent,
      },
      {
        path: 'product/:id',
        component: ProductComponent,
      },
      {
        path: 'about-us',
        component: AboutUsComponent,
      },
      {
        path: 'contact-us',
        component: ContactUsComponent,
      },
      {
        path: 'faq',
        component: FAQComponent,
      },
      {
        path: 'shop',
        component: ShopComponent,
      },
      {
        path: 'search',
        component: SearchResultsComponent
      },
      {
        path: 'cart',
        component: CartComponent,
      },
      {
        path: 'checkout',
        component: CheckoutComponent,
        canActivate: [ProfileGuard],
      },
      {
        path: 'thankyou',
        component: ThankyouComponent,
      },
      {
        path: 'login',
        component: LoginComponent,
      },
      {
        path: 'profile',
        component: ProfileComponent,
        canActivate: [ProfileGuard],
      }
      
    ],
  },
  {
    path: 'add-a-product',
    component: ProductFormComponent,
    canActivate: [AdminGuard],

  },
  {
    path: 'admin',
    component: AdminComponent,
    canActivate: [AdminGuard],
  },
  {
    path: 'admin/edit/product/:id',
    component: AdminEditComponent,
    canActivate: [AdminGuard],
  },
  // Wildcard Route if no route is found == 404 NOTFOUND page
  {
    path: '**',
    pathMatch: 'full',
    redirectTo: '',
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
