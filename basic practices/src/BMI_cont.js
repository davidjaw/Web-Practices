var people = {
  name: '',
  age: '',
  sex: '',
  tall: '',
  weight: ''
};
function BMI_cont() {
  var testZone = document.getElementById("testZone");
  for( var propety in people){
    people[propety] = document.getElementById(propety).value;
  }
  var BMI = people.weight / ( people.tall * people.tall * 0.0001 );
  var out;
  if( people.sex == 'F'){ out = "Miss "} else { out = "Mr. "}
  out = "<h1>" + out + people.name + "<br />Your BMI is " + BMI + "</h1>";
  testZone.innerHTML = out;
}