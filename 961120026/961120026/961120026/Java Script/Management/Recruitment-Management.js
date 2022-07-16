let Option = {
    markToday: "true",
    markHolidays: "true",
    highlightSelectedDay: "true",
    gotoToday: "true",
    buttonsColor: "gold",
    nextButtonIcon: "../../Pictures/timeir_next.png",
    previousButtonIcon: "../../Pictures/timeir_prev.png"
}

kamaDatepicker("ContentPlaceHolder1_RecruitmentBornTxtBox", Option);

function autoRefreshPage() {

    document.getElementById("ContentPlaceHolder1_RecruitmentStatus").innerHTML = ("");
}

setInterval(autoRefreshPage, 3000);
