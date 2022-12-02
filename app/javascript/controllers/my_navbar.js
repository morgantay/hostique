

const navbar = () => {
  document.querySelector('.menu-lines').addEventListener("click", (event) => {
      const dropdownElement = document.getElementById("myDropdown")
      console.log(dropdownElement)
      dropdownElement.classList.toggle("show");
    })
}

export { navbar };
