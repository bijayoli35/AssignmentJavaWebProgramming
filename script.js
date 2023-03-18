function isBalanced(input) {
    const stack = [];
    const pairs = {
      '(': ')',
      '[': ']',
      '{': '}'
    };
    for (let i = 0; i < input.length; i++) {
      if (input[i] === '(' || input[i] === '[' || input[i] === '{') {
        stack.push(input[i]);
      } else if (input[i] === ')' || input[i] === ']' || input[i] === '}') {
        if (pairs[stack.pop()] !== input[i]) {
          return false;
        }
      }
    }
    return stack.length === 0;
  }
  
  const form = document.querySelector('form');
  const inputField = document.querySelector('#input-brackets');
  const outputMessage = document.querySelector('#output-message');
  
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const input = inputField.value.trim();
    if (input.length === 0) {
      outputMessage.classList.remove('yes', 'no');
      outputMessage.textContent = '';
      return;
    }
    if (isBalanced(input)) {
      outputMessage.classList.remove('no');
      outputMessage.classList.add('yes');
      outputMessage.textContent = 'Yes, input brackets are balanced.';
    } else {
      outputMessage.classList.remove('yes');
      outputMessage.classList.add('no');
      outputMessage.textContent = 'No, input brackets are not balanced.';
    }
  });
  