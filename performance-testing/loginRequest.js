import http from 'k6/http';
import { sleep } from 'k6';
import { check } from 'k6';

export const options={
	vus:1, 	//number of virtual user
	duration: '5s',	
}

export default function () {
const url = "https://localhost:3000/auth/login";
const payload = JSON.stringify({
	username: 'test@gmail.com',
	password: 'fast12345'
});

const params = {
	headers: {
		'Content-Type':'application/json',
},
}

const res=http.post(url,payload,params);
check(res,{
	'is status 200': (r) => r.status === 200,
	'is res body has username':(r) => r.body.includes('Test')
})}
