import { Component, OnInit } from '@angular/core';
import { Trainee } from '../Model/Trainee';
import { MentorService } from '../Services/mentor.service';
import { AuthServiceService } from '../Services/auth-service.service';
import { StatusService } from '../Services/status.service';
import { Training } from '../Model/Training';

@Component({
  selector: 'app-mentor-view',
  templateUrl: './mentor-view.component.html',
  styleUrls: ['./mentor-view.component.css']
})
export class MentorViewComponent implements OnInit {
  trainees: any;
  
  userApproved = false;
  error: String = '';
  size: number = 0;
  constructor(private mentorservice:MentorService,private approvalService:StatusService) { }

  ngOnInit() {
    this.redirecting();
  }

  redirecting() {
    this.approvalService.getAllList().subscribe(
      (data) => {
        console.log(data);
        this.trainees =data;  }
    );
  }

  accept(traineeId: number) {

    this.approvalService.giveApproval(traineeId).subscribe(
      (data) =>
      {
        this.redirecting();
        alert("done");
      }
    );
  
  }

  decline(traineeId: number) {

    this.approvalService.declineApproval(traineeId).subscribe(
      (data) =>
      {
        this.redirecting();
        alert("done");
      }
    );

  }

    //   this.approvalService.giveUnApproval(userName).subscribe(() => {
    //     this.error = '';
    //     this.redirecting();
    //   },
    //     error => {
    //       this.error = error.error.message;
    //       if (error.error.errors != null) {
    //         this.error = error.error.errors[0];
    //       }
    //     });

  // decline(userName: string) {

  //   this.approvalService.giveUnApproval(userName).subscribe(() => {
  //     this.error = '';
  //     this.redirecting();
  //   },
  //     error => {
  //       this.error = error.error.message;
  //       if (error.error.errors != null) {
  //         this.error = error.error.errors[0];
  //       }
  //     });

  // }

}
