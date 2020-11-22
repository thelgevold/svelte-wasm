export class AddService {
  constructor() {
    this.add_numbers = Module.cwrap("add_numbers", "number", ["number", "number"]);
  }  
 
  add(operand1, operand2) {
    return this.add_numbers(operand1, operand2);
  }
}