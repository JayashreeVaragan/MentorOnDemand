import { Component, OnInit } from '@angular/core';
import { StatusService } from '../Services/status.service';
import { MentorService } from '../Services/mentor.service';

@Component({
  selector: 'app-training-view',
  templateUrl: './training-view.component.html',
  styleUrls: ['./training-view.component.css']
})
export class TrainingViewComponent implements OnInit {

  mentor: any;

  userApproved = false;
  error: String = '';
  size: number = 0;
  constructor(private mentorservice: MentorService, private approvalService: StatusService) { }

  ngOnInit() {
    this.redirecting();
  }

  redirecting() {
    this.approvalService.getAllList().subscribe(
      (data) => {
        console.log(data);
        this.mentor = data;
      }
    );
  }
  pay() {
    alert("Paid Successfully")
  }


}
