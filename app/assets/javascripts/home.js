function schedAlert(event) {
    let object = JSON.parse(gon.work_order)
    let currentObject = object[event]
    alert(`There is a work order scheduled at this time for ${object['duration']} minutes.`);
  }
  
  function availAlert() {
    alert("There is x amount of time between work orders");
  }