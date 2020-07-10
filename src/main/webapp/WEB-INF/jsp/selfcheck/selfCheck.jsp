

<head>
  <title>Welcome to our self-checker tool !</title>

</head>

<body>
    Welcome to our self-checker tool !
    <div id="welcome">
        <p>The purpose of the Coronavirus Self-Checker is to help you make decisions about seeking appropriate medical care. This system is not intended for the diagnosis or treatment of disease or other conditions, including COVID-19. This system is intended only for people who are currently located in the United States.</p>
        <p>This project was made possible through a partnership with the CDC Foundation and is enabled by Microsoft's Azure platform. CDC's collaboration with a non-federal organization does not imply an endorsement of any one particular service, product, or enterprise.</p>
        <button id="agree_button" value="agree" onclick="checkWelcome(this.value)">I agree</button>
        <button id="disagree_button" value="disagree" onclick="checkWelcome(this.value)">I don't agree</button>
    </div>
    <div id="welcome_agree" style="display:none">
        <p>Hi, I'm Clara. I'm  going to ask you some questions. I will use your answers to give you advice about the right level of medical care you should seek.</p>
        <p>But first, if you are experiencing a life-threatening emergency, please call 911 immediately.</p>
        <p>If you are not experiencing a life-threatening emergency, let’s get started.</p>
        <p>Are you in the United States right now?</p>
        <button id="us_yes_button" value="yes" onclick="checkUs(this.value)">Yes</button>
        <button id="us_no_button" value="no" onclick="checkUs(this.value)">No</button>
    </div>
    <div id="welcome_disagree" style="display:none">
        <p>The purpose of the Coronavirus Self-Checker is to help you make decisions about seeking appropriate medical care. This system is not intended for the diagnosis or treatment of disease or other conditions, including COVID-19. This system is intended only for people who are currently located in the United States.</p>
    </div>
    <div id="not_us" style="display:none">
        <p><strong>Coronavirus Self-Checker is intended for people currently located in the U.S.</strong></p>
        <p>Please check with your ministry of health for more information about COVID-19 in your location.</p>
    </div>
    <div id="states_list" style="display:none">
        <p>Where in the United States are you located?</p>
        <select id="state_dropdown" onChange="selectState();">
            <option value="default_message" aria-label="Please select a location">Please select a location</option>
            <option disabled="" hidden="" value=""></option>
            <option value="AL" aria-label="Alabama">Alabama</option>
            <option value="AK" aria-label="Alaska">Alaska</option>
            <option value="AS" aria-label="American Samoa">American Samoa</option>
            <option value="AZ" aria-label="Arizona">Arizona</option>
            <option value="AR" aria-label="Arkansas">Arkansas</option>
            <option value="CA" aria-label="California">California</option>
            <option value="Los_Angeles" aria-label="California - Los Angeles County">California - Los Angeles County</option>
            <option value="CO" aria-label="Colorado">Colorado</option>
            <option value="CT" aria-label="Connecticut">Connecticut</option>
            <option value="DE" aria-label="Delaware">Delaware</option>
            <option value="DC" aria-label="District Of Columbia">District Of Columbia</option>
            <option value="FM" aria-label="Federated States Of Micronesia">Federated States Of Micronesia</option>
            <option value="FL" aria-label="Florida">Florida</option>
            <option value="GA" aria-label="Georgia">Georgia</option>
            <option value="GU" aria-label="Guam">Guam</option>
            <option value="HI" aria-label="Hawaii">Hawaii</option>
            <option value="ID" aria-label="Idaho">Idaho</option>
            <option value="IL" aria-label="Illinois">Illinois</option>
            <option value="Chicago" aria-label="Illinois – Chicago">Illinois – Chicago</option>
            <option value="IN" aria-label="Indiana">Indiana</option>
            <option value="IA" aria-label="Iowa">Iowa</option>
            <option value="KS" aria-label="Kansas">Kansas</option>
            <option value="KY" aria-label="Kentucky">Kentucky</option>
            <option value="LA" aria-label="Louisiana">Louisiana</option>
            <option value="ME" aria-label="Maine">Maine</option>
            <option value="MH" aria-label="Marshall Islands">Marshall Islands</option>
            <option value="MD" aria-label="Maryland">Maryland</option>
            <option value="MA" aria-label="Massachusetts">Massachusetts</option>
            <option value="MI" aria-label="Michigan">Michigan</option>
            <option value="MN" aria-label="Minnesota">Minnesota</option>
            <option value="MS" aria-label="Mississippi">Mississippi</option>
            <option value="MO" aria-label="Missouri">Missouri</option>
            <option value="MT" aria-label="Montana">Montana</option>
            <option value="NE" aria-label="Nebraska">Nebraska</option>
            <option value="NV" aria-label="Nevada">Nevada</option>
            <option value="NH" aria-label="New Hampshire">New Hampshire</option>
            <option value="NJ" aria-label="New Jersey">New Jersey</option>
            <option value="NM" aria-label="New Mexico">New Mexico</option>
            <option value="NY" aria-label="New York">New York</option>
            <option value="New_York_City" aria-label="New York New York City">New York New York City</option>
            <option value="NC" aria-label="North Carolina">North Carolina</option>
            <option value="ND" aria-label="North Dakota">North Dakota</option>
            <option value="MP" aria-label="Northern Mariana Islands">Northern Mariana Islands</option>
            <option value="OH" aria-label="Ohio">Ohio</option>
            <option value="OK" aria-label="Oklahoma">Oklahoma</option>
            <option value="OR" aria-label="Oregon">Oregon</option>
            <option value="PW" aria-label="Palau">Palau</option>
            <option value="PA" aria-label="Pennsylvania">Pennsylvania</option>
            <option value="PR" aria-label="Puerto Rico">Puerto Rico</option>
            <option value="RI" aria-label="Rhode Island">Rhode Island</option>
            <option value="SC" aria-label="South Carolina">South Carolina</option>
            <option value="SD" aria-label="South Dakota">South Dakota</option>
            <option value="TN" aria-label="Tennessee">Tennessee</option>
            <option value="TX" aria-label="Texas">Texas</option>
            <option value="UT" aria-label="Utah">Utah</option>
            <option value="VT" aria-label="Vermont">Vermont</option>
            <option value="VI" aria-label="Virgin Islands">Virgin Islands</option>
            <option value="VA" aria-label="Virginia">Virginia</option>
            <option value="WA" aria-label="Washington">Washington</option>
            <option value="WV" aria-label="West Virginia">West Virginia</option>
            <option value="WI" aria-label="Wisconsin">Wisconsin</option>
            <option value="WY" aria-label="Wyoming">Wyoming</option>
        </select>

    </div>

    <div id="who_answer" style="display:none">
         <p>Are you answering for yourself or someone else?</p>
         <button id="myself_button" onclick="whoAnswer()">Myself</button>
         <button id="else_button" onclick="whoAnswer()">Someone else</button>
    </div>

     <div id="which_symptom" style="display:none">
     <p>Do they have any of these life-threatening symptoms?</p>
     <ul>
     <li>
     <p>Bluish lips or face</p>
     </li>
     <li>
     <p>Severe and constant pain or pressure in the chest</p>
     </li>
     <li>
     <p>Extreme difficulty breathing (gasping for air or cannot talk without catching your breath)</p>
     </li>
     <li>
     <p>Severe and constant dizziness or lightheadedness</p>
     </li>
     <li>
     <p>Serious disorientation (acting confused)</p>
     </li>
     <li>
     <p>Unconscious or very difficult to wake up</p>
     </li>
     <li>
     <p>Slurred speech (new or worsening)</p>
     </li>
     <li>
     <p>Seizures</p>
     </li>
     <li>
     <p>Signs of low blood pressure (too weak to stand, light headed, feeling cold, pale, clammy skin)</p>
     </li>
     </ul>

     <button id="symptom_yes_button" value="yes" onclick="checkSymptom(this.value)">Yes</button>
     <button id="symptom_no_button" value="no" onclick="checkSymptom(this.value)">No</button>

     </div>
     <div id="recommendation" style="display:none">
        <p><strong>Urgent medical attention may be needed. Please call 911 or go to the Emergency Department.</strong></p>
        <p>Based on your symptoms, you may need urgent medical care. Please call 911 or go to the nearest emergency department.</p>
        <p>Tell the 911 operator or emergency staff if you have had contact with someone with COVID-19.</p>
     </div>
     <div id="which_age" style="display:none">
        <p>What is your age?</p>
        <select id="age_dropdown" onChange="selectAge();">
            <option disabled="" hidden="" value=""></option>
            <option value="default_message" aria-label="Please select an age">Please select an age</option>
            <option value="0" aria-label="Under 18 years old">Under 18 years old</option>
            <option value="1" aria-label="18-29">18-29</option>
            <option value="2" aria-label="30-39">30-39</option>
            <option value="3" aria-label="40-49">40-49</option>
            <option value="4" aria-label="50-59">50-59</option>
            <option value="5" aria-label="60-64">60-64</option>
            <option value="6" aria-label="65-69">65-69</option>
            <option value="7" aria-label="70-79">70-79</option>
            <option value="8" aria-label="80+">80+</option>
        </select>
     </div>
     <div id="under_18" style="display:none">
        <p><strong>This Coronavirus Self-Checker is for people who are at least 18 years old.</strong></p>
        <p>Visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/daily-life-coping/children.html" target="_blank">CDC website</a> to get information on COVID-19 and younger people.</p>
     </div>
     <div id="is_ill" style="display:none">
        <p>Are you feeling ill?</p>
        <button id="ill_yes_button" value="yes" onclick="checkIll(this.value)">Yes</button>
        <button id="ill_no_button" value="no" onclick="checkIll(this.value)">No</button>
     </div>
     <div id="check_gender" style="display:none">
        <p>What is your gender?</p>
        <button id="male_button" value="male" onclick="checkGender(this.value)">Male</button>
        <button id="female_button" value="female" onclick="checkGender(this.value)">Female</button>
        <button id="other_button" value="other" onclick="checkGender(this.value)">Other</button>
     </div>
     <div id="is_contacted" style="display:none">
        <p>In the last two weeks, did you care for or have close contact with someone diagnosed with COVID-19?</p>
        <button id="contacted_yes_button" value="yes" onclick="checkContacted(this.value)">Yes</button>
        <button id="contacted_no_button" value="no" onclick="checkContacted(this.value)">No</button>
        <button id="contacted_wonder_button" value="wonder" onclick="checkContacted(this.value)">I don't know</button>
     </div>
     <div id="checkbox_symptom" style="display:none">
        <p>Do you have any of the following? (check any)</p>
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Fever or feeling feverish (chills, sweating)"/>
        <label for="symptoms_checkboxes">Fever or feeling feverish (chills, sweating)</label>
        </p> 
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Cough"/>
        <label for="symptoms_checkboxes">Cough</label>
        </p>    
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Mild or moderate difficulty breathing"/>
        <label for="symptoms_checkboxes">Mild or moderate difficulty breathing</label>
        </p>
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Sore throat"/>
        <label for="symptoms_checkboxes">Sore throat</label>
        </p>
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Muscle aches or body aches"/>
        <label for="symptoms_checkboxes">Muscle aches or body aches</label>
        </p>
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Vomiting or diarrhea"/>
        <label for="symptoms_checkboxes">Vomiting or diarrhea</label>
        </p>
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="New loss of taste or smell"/>
        <label for="symptoms_checkboxes">New loss of taste or smell</label>
        </p>
        <p>
        <input name="symptoms_checkboxes" type="checkbox" value="Other symptoms"/>
        <label for="symptoms_checkboxes">Other symptoms</label>
        </p>
        <input type="button" id="checkbox_button" onclick="getCheckedCheckboxesFor('symptoms_checkboxes');" value="Submit" />
   
     </div>


      <div id="where_live" style="display:none">
             <p>Do you live in a long-term care facility or nursing home?</p>
             <button id="live_yes_button" value="yes" onclick="checkLive(this.value)">Yes</button>
             <button id="live_no_button" value="no" onclick="checkLive(this.value)">No</button>
      </div>
      <div id="is_volunteered" style="display:none">
             <p>In the last two weeks have you worked or volunteered in a healthcare facility?</p>
             <button id="volunteered_yes_button" value="yes" onclick="checkVolunteered(this.value)">Yes</button>
             <button id="volunteered_no_button" value="no" onclick="checkVolunteered(this.value)">No</button>
      </div>
      <div id="checkbox_symptom_further" style="display:none">
                   <p>Do any of these apply to you? (check any))</p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="Chronic lung disease, moderate to severe asthma"/>
                   <label for="symptoms_checkboxes">Chronic lung disease, moderate to severe asthma</label>
                   </p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="Serious heart conditions"/>
                   <label for="symptoms_checkboxes">Serious heart conditions</label>
                   </p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="Weakened immune system or taking medications that may cause immune suppression"/>
                   <label for="symptoms_checkboxes">Weakened immune system or taking medications that may cause immune suppression</label>
                   </p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="Severe obesity"/>
                   <label for="symptoms_checkboxes">Severe obesity</label>
                   </p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="Diabetes, renal (kidney) failure, or liver disease"/>
                   <label for="symptoms_checkboxes">Diabetes, renal (kidney) failure, or liver disease</label>
                   </p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="Pregnancy"/>
                   <label for="symptoms_checkboxes">Pregnancy</label>
                   </p>
                   <p>
                   <input name="symptoms_checkboxes_further" type="checkbox" value="None of the above"/>
                   <label for="symptoms_checkboxes">None of the above</label>
                   </p>
                   <input type="button" id="checkbox_button_further" onclick="getCheckedCheckboxesFor('symptoms_checkboxes_further');" value="Submit" />
      </div>
      <div id="stay_home" style="display:none">
            <p><strong>Stay home and take care of yourself. Call your provider if you get worse</strong></p>
            <p>Sorry you're not feeling well. Your symptoms may be related to COVID-19.</p>
            <ul>
            <li>
            <p>Stay home except to get medical care.</p>
            <ul>
            <li>
            <p>Do not go to work, school, or public areas.</p>
            </li>
            <li>
            <p>Do not use public transportation or ride sharing.</p>
            </li>
            </ul>
            </li>
            <li>
            <p>If you feel worse or you think it is an emergency, seek medical care.</p>
            </li>
            <li>
            <p>Learn how to <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/steps-when-sick.html" target="_blank">take care of yourself</a> or <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/care-for-someone.html" target="_blank">someone else who is sick</a>.</p>
            </li>
            <li>
            <p>Take steps to help <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/steps-when-sick.html" target="_blank">protect others from getting sick</a>.</p>
            </li>
            </ul>
            <p>Please also see your local area's website</p>
            <p><strong>Contact the occupational health provider at your workplace immediately.</strong></p>
            <p>Tell the occupational health provider (or supervisor) in your workplace that you’re feeling ill as soon as possible.</p>
            <p><strong>You may be eligible for COVID-19 testing</strong></p>
            <p>Visit your health department's website or talk to your healthcare provider for more information. To find a testing location near you, visit the <a href="https://www.hhs.gov/coronavirus/community-based-testing-sites/index.html" target="_blank">HHS website</a>.</p>
      </div>
      <div id="wear_mask" style="display:none">
            <p>Did you wear all recommended personal protective equipment while you were in close contact with someone diagnosed with COVID-19?</p>
            <button id="wear_yes_button" value="yes" onclick="checkWear(this.value)">Yes</button>
            <button id="wear_no_button" value="no" onclick="checkWear(this.value)">No</button>
      </div>
      <div id="monitor" style="display:none">
             <p><strong>Monitor for symptoms, stay at home.</strong></p>
             <ul>
             <li>
             <p>Stay home for 14 days</p>
             </li>
             <li>
             <p>Take your temperature twice a day and watch for <a href="https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html" target="_blank">symptoms of COVID-19</a>.</p>
             </li>
             <li>
             <p>Practice social distancing.</p>
             <ul>
             <li>
             <p>Stay at least 6 feet away from others and stay out of crowded places.</p>
             </li>
             <li>
             <p>If possible, stay away from people who are at <a href="https://www.cdc.gov/coronavirus/2019-ncov/need-extra-precautions/index.html" target="_blank">higher risk</a> for getting very sick from COVID-19.</p>
             </li>
             </ul>
             </li>
             <li>
             <p>If you develop symptoms, follow <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/steps-when-sick.html" target="_blank">CDC guidance</a>.</p>
             </li>
             </ul>
             <p>Please also see your local area's website</p>
             <p><strong>No COVID-19 testing needed at this time</strong></p>
             <p>Based on the answers you've given, you do not need to get tested for COVID-19 at this time.</p>
      </div>
      <div id="tell_healthcare" style="display:none">
            <p>If you start to feel ill, tell a healthcare provider in the long-term care facility where you live.</p>
      </div>
      <div id="healthcare_provider" style="display:none">
            <p><strong>Contact a healthcare provider in the long-term care facility where you live.</strong></p>
            <p>Tell a caregiver in your facility that you are sick and need to see a medical provider as soon as possible. Living in a long-term care facility or nursing home may put you at a higher risk for severe illness.</p>
            <p>Help <a href="https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/prevention.html" target="_blank">protect others from getting sick</a>:</p>
            <ul>
            <li>
            <p>Stay in your room except to get medical care</p>
            </li>
            <li>
            <p>Cover your coughs and sneezes</p>
            </li>
            <li>
            <p>Clean your hands often</p>
            </li>
            </ul>
            <p>Please also see your local area's website</p>

      </div>
      <div id="sound_ok" style="display:none">
            <p><strong>Sounds like you are feeling ok.</strong></p>
            <p>Learn more about COVID-19 and what you can do to stay safe on the <a href="https://www.cdc.gov/coronavirus/2019-ncov/index.html" target="_blank">CDC website</a>.</p>
            <p>Please also see your local area's website</p>
            <p><strong>Monitor for symptoms.</strong></p>
            <p>Watch for <a href="https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html" target="_blank">COVID-19 symptoms</a>. If you develop symptoms, call your healthcare provider, clinician advice line, or telemedicine provider.</p>
            <p>Learn more about COVID-19 and steps you can take to protect yourself and others on the <a href="https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/index.html" target="_blank">CDC website</a>.</p>
            <p><strong>No COVID-19 testing needed at this time</strong></p>
            <p>Based on the answers you’ve given, you do not need to get tested for COVID-19 at this time.</p>
      </div>
      <div id="monitor_mask" style="display:none">
        <p><strong>Monitor for symptoms, wear a mask.</strong></p>
        <p>Watch for <a href="https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html" target="_blank">COVID-19 symptoms</a>. If you develop symptoms, call your occupational health provider as well as your healthcare provider, clinician advice line, or telemedicine provider. Since you work or volunteer in a healthcare facility, you may be asked to wear a mask to protect yourself and those around you.</p>
        <p>Please also see your local area's website</p>
        <p><strong>You may be eligible for COVID-19 testing</strong></p>
        <p>Visit your health department’s website or talk to your healthcare provider for more information. To find a testing location near you, visit the <a href="https://www.hhs.gov/coronavirus/community-based-testing-sites/index.html" target="_blank">HHS website</a>.</p>
      </div>
      <div id="contact_mask_no" style="display:none">
        <p><strong>Contact the occupational health provider at your workplace.</strong></p>
        <p>Tell your occupational health provider (or supervisor) that you have been in contact with someone diagnosed with COVID-19. You may be asked to wear a mask to protect yourself and those around you.</p>
        <ul>
        <li>
        <p>Check your temperature twice a day for 14 days.</p>
        </li>
        <li>
        <p>Watch for <a href="https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html" target="_blank">COVID-19 symptoms</a>. Learn more about COVID-19 and how you can protect yourself and others on the <a href="https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/index.html" target="_blank">CDC website</a>.</p>
        </li>
        </ul>
        <p>Please also see your local area's website</p>
        <p><strong>You may be eligible for COVID-19 testing</strong></p>
        <p>Visit your health department’s website or talk to your healthcare provider for more information. To find a testing location near you, visit the <a href="https://www.hhs.gov/coronavirus/community-based-testing-sites/index.html" target="_blank">HHS website</a>.</p>
      </div>
       <div id="stay_home_take_care" style="display:none">
                  <p><strong>Stay home and take care of yourself. Call a medical provider within 24 hours.</strong></p>
                  <p>Sorry you’re not feeling well.  Your symptom(s) may be related to COVID-19.</p>
                  <ul>
                  <li>
                  <p>Call your healthcare provider, clinician advice line, or telemedicine provider within 24 hours.</p>
                  </li>
                  <li>
                  <p>Stay home except to get medical care.</p>
                  <ul>
                  <li>
                  <p>Do not go to work, school, or public areas.</p>
                  </li>
                  <li>
                  <p>Do not use public transportation or ride sharing.</p>
                  </li>
                  </ul>
                  </li>
                  <li>
                  <p>If you feel worse or think this is an emergency, seek medical care.</p>
                  </li>
                  <li>
                  <p>Find <a href="https://telehealth.hhs.gov/" target="_blank">telehealth</a> services.</p>
                  </li>
                  <li>
                  <p>Learn how to <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/steps-when-sick.html" target="_blank">take care of yourself</a> or <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/care-for-someone.html" target="_blank">someone else who is sick</a>.</p>
                  </li>
                  <li>
                  <p>Take steps to help <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/steps-when-sick.html" target="_blank">protect others from getting sick</a>.</p>
                  </li>
                  </ul>
                  <p>Please also see your local area's website</p>
                  <p><strong>You may be eligible for COVID-19 testing</strong></p>
                  <p>Visit your health department’s website or talk to your healthcare provider for more information. To find a testing location near you, visit the <a href="https://www.hhs.gov/coronavirus/community-based-testing-sites/index.html" target="_blank">HHS website</a>.</p>
       </div>
</body>

<script  type="text/javascript" src="js/selfcheck.js"> </script>




