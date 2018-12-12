
const initFormRefresh = () => {
  const sort = document.getElementById("query_sort_by");
  const searchForm = document.querySelector(".search-bar-index");
  const grade = document.getElementById("query_grade");
  const topic = document.getElementById("query_topic");
  if (searchForm) {

    const options = document.querySelectorAll(".sort-by-btn");
    options.forEach((option) => {
      option.addEventListener('click', (e) => {
        options.forEach((option) => {
          option.classList.remove('active');
        });
        e.currentTarget.classList.add('active');
        const dataValue = e.currentTarget.dataset.value;
        console.log(dataValue);
        sort.value = dataValue;
        searchForm.submit();
      })
    });
      grade.addEventListener('change', (event) => {
        searchForm.submit()
    });
      topic.addEventListener('change', (event) => {
        searchForm.submit()
    });
  }


}

export { initFormRefresh }
