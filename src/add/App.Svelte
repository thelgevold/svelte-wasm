<script>
  import { AddService } from './add-service';
  const addService = new AddService();

  let operand1 = 10;
  let operand2 = 20;

  let result;

  function add() {
    result = addService.add(operand1, operand2);
	}
</script>

<h2>Add</h2>

<input type="number" bind:value={operand1}>
<input type="number" bind:value={operand2}>

<button on:click={add}>Add</button>

<div>Result: {result || ''}</div>

