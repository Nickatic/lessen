require('jquery-countdown');

const initCountdown = () => {
  $(document).ready(function() {
    const startsAt = $("#live-countdown").data('startsAt');
    $("#live-countdown").countdown(startsAt, function(event) {
      $(this).text(
        event.strftime('%D days %H:%M:%S')
      );
    });
  });
}

export { initCountdown };
