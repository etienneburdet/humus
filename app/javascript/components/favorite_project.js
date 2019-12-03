const updateFavorite = () => {

  var stars = document.querySelectorAll(".change-icon i");

  stars.forEach((star) => {

    var starIdProject = star.dataset.projectid ;
    console.log(starIdProject);

    var buttonUpdate = document.querySelector(`#like-project-${starIdProject} input[type="submit"]`);
    console.log(buttonUpdate);

    star.addEventListener("click", (event) => {
      buttonUpdate.click();
    });

  })


}

export { updateFavorite };
