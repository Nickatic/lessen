const initFlatpickr = () => {
  $("#query_range_date").flatpickr({
    mode: "range",
    dateFormat: "Y-m-d",
    altInput: true,
    altFormat: "j F, Y",
    minDate: 'today'

  });

  $("#query_min_time").flatpickr({
    enableTime: true,
    noCalendar: true,
    dateFormat: "H",
    time_24hr: true
  });
  $("#query_max_time").flatpickr({
    enableTime: true,
    noCalendar: true,
    dateFormat: "H",
    time_24hr: true
  });
}

export { initFlatpickr }

