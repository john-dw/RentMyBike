import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="compute-price"
export default class extends Controller {
  static targets = ["startDate", "endDate", "numberOfDays", "pricingBlock", "pricePerDay", "totalPrice"]
  connect() {
    console.log("The price controller is now loaded")
  }

  compute() {
    let startDate = this.startDateTarget.valueAsDate;
    let endDate = this.endDateTarget.valueAsDate;
    let totalDays = (endDate - startDate) / 86400000;
    let pricePerDay = Number.parseInt(this.pricePerDayTarget.innerText, 10);
    let totalPrice = pricePerDay * totalDays;
    let dayWording = ""
    console.log(totalDays)
    console.log(totalDays >= 1)
    if (totalDays > 1) 
      {dayWording = "days";}
    else 
      {dayWording = "day";}
    console.log(dayWording);
    if (totalDays > 0) {
      this.pricingBlockTarget.classList.remove('d-none');
      this.pricePerDayTarget.innerText = `${pricePerDay}€`;
      this.numberOfDaysTarget.innerText = `x ${totalDays} ${dayWording}`;
      this.totalPriceTarget.innerHTML = `<strong>Total price: ${totalPrice}€</strong>`;
    }
  }
}
