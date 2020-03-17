//This code is written by Hari Krishnan U
//This source code is meant to be submitted to Learn From Home by Tinkerhub
import 'dart:io';
  
class tech{

  int num_of_participants = 0;
  //The number of participants is assumed to be 300 
  var role = new List(300);
  var participant_name = new List(300);
  var skill = new List(300);
  var available_time = new List(300);
  
  //Stores the various available technical skills
  String addStacks(){
    String stack;
    print("Enter the tech skill in which the mentor/learner is  expert at/interested in : ");
    stack = stdin.readLineSync();
    return stack;
  }
  
  //Gets the available time of a mentor
  int setAvailableTime(){
    int time;
    print("Enter the available time for this mentor in minutes : ");
      time = stdin.readByteSync();
      return time;
  }

  //Determines whether a participant is a learner or a mentor
  void setMentorOrLearner(){
    String flag = 'Y';
    do{  
      print("Enter the name of the Participant : ");
      participant_name[num_of_participants] = stdin.readLineSync();
      String desig;
      print("Enter the designation of the participant (mentor/learner)?");
      desig = stdin.readLineSync();
      desig = desig.toLowerCase();
      if(desig != "learner" || desig != "mentor"){
        print("Invalid input");
        continue;
      }
      role[num_of_participants] = desig;
      print("Enter the tech skill in which the participant is interested in : ");
      skill[num_of_participants] = addStacks();
      if(desig == "mentor")
        available_time[num_of_participants] = setAvailableTime();     
      num_of_participants++;
      print("Do you want to add more participants? (Y/N)");
      flag = stdin.readLineSync();
      flag = flag.toUpperCase();
      if(flag =='N'){
        break;
      }
      if(flag != 'Y' || flag != 'N'){
        print("Invalid input");
        continue;
      }
    }while(flag == 'Y' && num_of_participants < 300);
  }

//Finds suitable available mentors, takes stack and available time as parameters
  void getMentor(List tech,int time){
    for(int i = 0; i < 300; ++i){
      if(skill[i] == tech){
        if(available_time[i] >= time){
          print("The mentor available is  ${participant_name[i]}. ");
          break;
        }      
      }
    }  
  }
}

void main(){
}