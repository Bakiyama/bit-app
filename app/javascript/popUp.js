function popUp () {
  const blockBtn = document.getElementById("addBlockBtn");
  const formBlock = document.getElementById("formblock");
  const mask = document.getElementById("mask");
  const actionBtn = document.getElementById("actionBtn");
  const purposeDelete = document.getElementById("purposeDelete");
  const cfrmDelete = document.getElementById("cfrmDelete");
  const closeBtn = document.getElementById("closeBtn");
  
  blockBtn.addEventListener('click', function(){
    formBlock.classList.add("active");
    mask.classList.add("active")
  })

  actionBtn.addEventListener('click', function(){
    formBlock.classList.remove("active");
    mask.classList.remove("active")
  })

  purposeDelete.addEventListener('click', function(){
    cfrmDelete.classList.add("active");
    mask.classList.add("active")
  })

  closeBtn.addEventListener('click', function(){
    cfrmDelete.classList.remove("active");
    mask.classList.remove("active")
  })
}

window.addEventListener('load', popUp)

