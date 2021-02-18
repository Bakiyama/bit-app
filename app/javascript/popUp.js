function popUp () {
  const blockBtn = document.getElementById("addBlockBtn");
  const formBlock = document.getElementById("formblock");
  const mask = document.getElementById("mask");
  const actionBtn = document.getElementById("actionBtn");
  
  blockBtn.addEventListener('click', function(){
    formBlock.classList.add("active");
    mask.classList.add("active")
  })

  actionBtn.addEventListener('click', function(){
    formBlock.classList.remove("active");
    mask.classList.remove("active")
  })
}

window.addEventListener('load', popUp)

