import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const initFlatpickr = () => {
  flatpickr("#start_date",{
    altInput: true,
    mode: "range",
    minDate: "today",
    position: "left",
    inline: true,
    "plugins": [new rangePlugin({ input: "#end_date"})]
  });
}



export { initFlatpickr }
