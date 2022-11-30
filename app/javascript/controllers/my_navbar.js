

const navbar = () => {
  document.addEventListener("click", (event) => {
    console.log(event.target)
    if (!event.target.matches('.menu-lines')) {
      const dropdowns = document.querySelectorAll(".dropdown-content");

      dropdowns.forEach((dropdown) => {
        if (dropdown.classList.contains('show')) {
          dropdown.classList.remove('show');
        }
      })
    }
    else {
      console.log("owo")
      const dropdownElement = document.getElementById("myDropdown")
      console.log(dropdownElement)
      dropdownElement.classList.toggle("show");
    }

  })
}

export { navbar };
