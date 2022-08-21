import { Controller } from "@hotwired/stimulus"

export default class HelloController extends Controller {
  static targets = ["greet"]
  declare readonly greetTarget: HTMLElement;

  connect() {
    console.log("Hello Controller Connected")
    this.greetTarget.textContent = "Hello World with TypeScript!"
  }
}
