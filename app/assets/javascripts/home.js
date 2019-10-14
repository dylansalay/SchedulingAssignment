function schedAlert(woId) {
    let object = JSON.parse(gon.work_order)

    for(let i=0;i<object.length;i++){
      if(object[i].id === woId) { 
        object = object[i]
        x = true  
      } else {
      x = false
      }
    }
    x === true ? alert(`There is a work order scheduled at this time for ${object['duration']} minutes.`) : alert('Error')
  }
  
  function availAlert(techId) {
    let object = JSON.parse(gon.work_order)
    console.log(object)
    console.log(techId)
    for(let i=0;i<object.length;i++){

    }
    alert("The amount of time between the technicians previous work order is (), and the amount of time until their next work order is ()");
  }