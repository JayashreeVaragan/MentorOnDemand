import { Component, OnInit } from '@angular/core';
import { mentor } from '../Model/Mentor';
import { Technology } from '../Model/Technology';
import { mentorSkills } from '../Model/MentorSkills';
import { TechnologyService } from '../Services/technology.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {

  skill:Technology[];
  mentorSkills:mentorSkills[];
  nameSearch:string;
  filteredlist:Technology[];
  mentorList:mentorSkills;
  constructor(private techService:TechnologyService) { }

  ngOnInit() {
    this.techService.getAllTechnologies().subscribe((data)=>{
      this.skill=data;
      this.filteredlist=data;
     
    })
    this.techService.searchAll().subscribe((data)=>{
      this.mentorSkills=data;
    })
  }
  search(){
    console.log(this.nameSearch)
    if(this.nameSearch=="")
    this.ngOnInit();
    this.filteredlist = this.skill.filter(l => (l.skillName.toLowerCase().match(this.nameSearch.toLocaleLowerCase())))
  }
  list(skillName:string){
this.techService.search(skillName).subscribe(
  data=>{
this.mentorSkills=data
console.log(this.mentorSkills);
alert('search');
  }
)
  }

}
