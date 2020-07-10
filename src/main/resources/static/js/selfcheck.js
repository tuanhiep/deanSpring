//global variable
var isIll=false;
var isContacted=false;
var isHeathCared=false;
var isVolunteered=false;
var isGreater65=false;
var isSymptom=false;
var isCheckedBoxes=false;


//step 1
function checkWelcome(value){
    if(value=="disagree"){
        document.getElementById("welcome_disagree").style.display = "block";
        console.log('Disagree at step-1');

    }
    else{
        document.getElementById("welcome_agree").style.display = "block";
    }

    document.getElementById("agree_button").disabled = true;
    document.getElementById("disagree_button").disabled = true;

}

console.log("continue to step 2");
//step 2

function checkUs(value){
     if(value=="no"){
        document.getElementById("not_us").style.display = "block";
        console.log('Disagree at step-2');
        throw new Error("Stop script");
     }
     document.getElementById("states_list").style.display = "block";
     document.getElementById("us_yes_button").disabled = true;
     document.getElementById("us_no_button").disabled = true;

}

console.log("continue to step 3");
//step 3

function selectState() {
    var state_dropdown = document.getElementById("state_dropdown");
    var state_value = state_dropdown.options[state_dropdown.selectedIndex].value;

//    if (state_value != "NM") {
//        alert("Coronavirus Self-Checker is intended for people in New Mexico University. \n\nPlease check with your local responsible for more information about COVID-19 in your location.");
//        console.log('Not in New Mexico State at step-3');
//        throw new Error("Stop script");
//    }
    document.getElementById("who_answer").style.display = "block";
    document.getElementById("state_dropdown").disabled = true;



}

//step 4


function whoAnswer(){
    document.getElementById("which_symptom").style.display = "block";
    document.getElementById("myself_button").disabled = true;
    document.getElementById("else_button").disabled = true;
}
// step 5


function checkSymptom(value){
    if(value=="yes"){
        document.getElementById("recommendation").style.display = "block";
        isSymptom=true;

    }
    else{
        document.getElementById("which_age").style.display = "block";
    }
    document.getElementById("symptom_yes_button").disabled = true;
    document.getElementById("symptom_no_button").disabled = true;
}

function selectAge(){
     var age_dropdown = document.getElementById("age_dropdown");
     var age_value = age_dropdown.options[age_dropdown.selectedIndex].value;
     if(age_value=="0"){
         document.getElementById("under_18").style.display = "block";
     }
     else if(age_value=="6"|| age_value=="7"|| age_value=="8"){
        isGreater65=true;
        document.getElementById("is_ill").style.display = "block";
     }
     else{
        document.getElementById("is_ill").style.display = "block";
     }
     document.getElementById("age_dropdown").disabled = true;
}
function checkIll(value){
     if(value=="no"){
        document.getElementById("is_contacted").style.display = "block";

     }
     else{
        isIll=true;
        document.getElementById("check_gender").style.display = "block";
     }
     document.getElementById("ill_yes_button").disabled = true;
     document.getElementById("ill_no_button").disabled = true;
}
function checkGender(value){
     document.getElementById("is_contacted").style.display = "block";
     document.getElementById("male_button").disabled = true;
     document.getElementById("female_button").disabled = true;
     document.getElementById("other_button").disabled = true;

}
function checkContacted(value){
     if(isIll){
       document.getElementById("checkbox_symptom").style.display = "block";

     }
     else{
         if(value=="yes"){
            isContacted=true;
            document.getElementById("where_live").style.display = "block";

         }
         if(value=="no" && !isIll){
            document.getElementById("sound_ok").style.display = "block";
         }
         if(value=="wonder"){
            document.getElementById("where_live").style.display = "block";

         }
     }
     document.getElementById("is_contacted").disabled = true;
     document.getElementById("contacted_yes_button").disabled = true;
     document.getElementById("contacted_no_button").disabled = true;
     document.getElementById("contacted_wonder_button").disabled = true;

}
function getCheckedCheckboxesFor(checkboxName) {
    var checkboxes = document.querySelectorAll('input[name="' + checkboxName + '"]:checked'), values = [];
    Array.prototype.forEach.call(checkboxes, function(el) {
        values.push(el.value);
    });
    if(values.length == 0) {
    alert("You should choose one of the checkboxes !");
    }
    else{
        document.getElementById("checkbox_button").disabled = true;
        if(checkboxName=="symptoms_checkboxes"){
            document.getElementById("where_live").style.display = "block";
            document.getElementById("checkbox_button").disabled = true;
        }

        if(checkboxName=="symptoms_checkboxes_further"){
            document.getElementById("stay_home_take_care").style.display = "block";
            document.getElementById("checkbox_button_further").disabled = true;
        }

        isCheckedBoxes=true;

    }
}

function checkLive(value){
    if(isCheckedBoxes){
         if(value=="yes"){
             document.getElementById("healthcare_provider").style.display = "block";
         }
         else{
             document.getElementById("is_volunteered").style.display = "block";
         }

    }else{
         if(value=="yes"){
            document.getElementById("monitor").style.display = "block";
            document.getElementById("tell_healthcare").style.display = "block";
            isHeathCared=true;


         }
         else{
            document.getElementById("is_volunteered").style.display = "block";

         }
     }
     document.getElementById("live_yes_button").disabled = true;
     document.getElementById("live_no_button").disabled = true;

}
function checkVolunteered(value){
    if(isCheckedBoxes){
        if(value=="yes"){
            document.getElementById("stay_home").style.display = "block";
        }
        else{
            document.getElementById("checkbox_symptom_further").style.display = "block";

        }

    }else
    {
        if(value=="yes"){
           document.getElementById("wear_mask").style.display = "block";
           isVolunteered=true;
        }
        else{
           document.getElementById("monitor").style.display = "block";

        }
    }
     document.getElementById("volunteered_yes_button").disabled = true;
     document.getElementById("volunteered_no_button").disabled = true;


}

function checkWear(value){

    if(value=="yes"){
      document.getElementById("monitor_mask").style.display = "block";

    }
    else{
      document.getElementById("contact_mask_no").style.display = "block";
    }
    document.getElementById("wear_yes_button").disabled = true;
    document.getElementById("wear_no_button").disabled = true;
}