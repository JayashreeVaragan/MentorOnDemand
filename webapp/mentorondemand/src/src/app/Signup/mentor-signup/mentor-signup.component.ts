import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, FormControl } from '@angular/forms';
import { mentor } from 'src/app/Model/Mentor';
import { SignUpServiceService } from 'src/app/Services/sign-up-service.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-mentor-signup',
  templateUrl: './mentor-signup.component.html',
  styleUrls: ['./mentor-signup.component.css']
})
export class MentorSignupComponent implements OnInit {

  signUpForm: FormGroup;
  mentor:mentor;


  constructor(private formBuilder: FormBuilder, private signService: SignUpServiceService,private router:Router) { }

  ngOnInit() {
    this.signUpForm = this.formBuilder.group({
      userID: ['', [
        Validators.required,
        this.isUsernameTaken
      ]],
      firstName: ['', [
        Validators.required
      ]],
      lastName: ['', [
        Validators.required
      ]],
      yearsOfExperience: ['', [
        Validators.required
      ]],
      linkedInUrl: ['', [
        Validators.required
      ]],
      contactNo: ['', [
        Validators.required
      ]],
      email: ['', [
        Validators.required
      ]],
      password: ['', [
        Validators.required
      ]],
      confirmPassword: ['', [
        Validators.required,
        this.matchConfirmPassword.bind(this)
      ]]
    })
  }
  get userID() {
    return this.signUpForm.get('userID');
  }
  get firstName() {
    return this.signUpForm.get('firstName');
  }
  get lastName() {
    return this.signUpForm.get('lastName');
  }
  get yearsOfExperience() {
    return this.signUpForm.get('yearsOfExperience');
  }
  get linkedInUrl() {
    return this.signUpForm.get('linkedInUrl');
  }
  get contactNo() {
    return this.signUpForm.get('contactNo');
  }
  get email() {
    return this.signUpForm.get('email');
  }
  get password() {
    return this.signUpForm.get('password');
  }
  get confirmPassword() {
    return this.signUpForm.get('confirmPassword');
  }

  matchConfirmPassword(formControl: FormControl): { [s: string]: boolean } {
    if (this.signUpForm) {
      if (formControl.value && formControl.value.length > 0 && formControl.value !== this.signUpForm.get('password').value) {
        return { 'nomatch': true };
      }
    }
    return null;
  }
  isUsernameTaken(formControl: FormControl): { [s: string]: boolean } {
    if (formControl.value === 'admin') {
      return { 'userNameTaken': true };
    } else {
      return null;
    }
  }
  submit(mentorlist:mentor){
    console.log(mentorlist);
    this.signService.addMentor(mentorlist).subscribe((data)=>{
      alert('signed up successfully!!!');
      this.router.navigate(['login']);
    })
  }



  submitToAdd(mentorlist:mentor){
    console.log(mentorlist);
    this.signService.addMentor(mentorlist).subscribe((data)=>{
      alert('signed added');
      this.router.navigate(['addSkill',mentorlist.userID]);
    })
  }
}
