
const initFormRefresh = () => {
  const sort = document.getElementById("query_sort_by");
  const searchForm = document.querySelector(".search-bar-index");
  const grade = document.getElementById("query_grade");
  const topic = document.getElementById("query_topic");
  sort.addEventListener('change', (event) => {
    searchForm.submit()
});
  grade.addEventListener('change', (event) => {
    searchForm.submit()
});
  topic.addEventListener('change', (event) => {
    searchForm.submit()
});
}

export { initFormRefresh }
