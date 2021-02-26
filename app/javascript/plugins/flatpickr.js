// import flatpickr from "flatpickr";
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


// const initFlatpickr = () => {
//   flatpickr(".datepicker",{
//     // altInput: true,
//     // mode: "range",
//     altInputClass: "invisible",
//     minDate: "today",
//     position: "above",
//     inline: true,
//     // "plugins": [new rangePlugin({ input: "#end_date"})]
//   });
// }



// export { initFlatpickr }

import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
const initFlatpickr = () => {
  flatpickr(".datepicker",{
    mode: "range",
    altInputClass: "invisible",
    minDate: "today",
    inline: true,
  });
}
export { initFlatpickr }
