import http from 'k6/http';
import { sleep } from 'k6';

export default function () {
  // Request page containing a form
  let res = http.get('https://localhost:3000/auth/login');

  // Now, submit form setting/overriding some fields of the form
  res = res.submitForm({
    formSelector: 'form',
    fields: { username: 'maryam.shahid047@gmail.com', password: 'metabase@3000' },
  });
  sleep(3);
}