function schedAlert(wid) {
    let object = JSON.parse(gon.work_order)
    console.log(object)
    console.log(wid)
    for(let i=0;i<object.length;i++){
      if(object[i].id === wid) { 
        object = object[i]
        x = true  
      } else {
      x = false
      }
    }
    x === true ? alert(`There is a work order scheduled at this time for ${object['duration']} minutes.`) : alert('Error')
  }
  
  function availAlert() {
    alert("There is x amount of time between work orders");
  }