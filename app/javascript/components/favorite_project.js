const updateFavorite = () => {

  const stars = document.querySelectorAll(".change-icon i");

  stars.forEach((star) => {

    const starIdProject = star.dataset.projectid ;
    const buttonUpdate = document.querySelector(`#like-project-${starIdProject} input[type="submit"]`);

    star.addEventListener("click", (event) => {
      buttonUpdate.click();
    });

  })


}

export { updateFavorite };
