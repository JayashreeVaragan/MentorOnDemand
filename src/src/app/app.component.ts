import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthServiceService } from './Services/auth-service.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'MentorOnDemand';
  isLoggedIn: boolean = false;
  constructor(private router:Router,private authService:AuthServiceService) {  }
  ngOnInit() {
    this.loggedIn();
    // this.router.navigate(['search']);

}

loggedIn(): boolean {
  if (!this.authService.loggedInUser.loggedOut) {
    this.isLoggedIn = true;
    return true
  }
  else {
    this.isLoggedIn = false;
    return false;
  }
}

}

