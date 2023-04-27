/* eslint-disable no-undef */
jest.setTimeout(50000);

var supertest = require("supertest");
const request = supertest("http://localhost:3000/");

//API test#1 (Login with valid credentials)
it("test case1", async () => {
  let user = {
    username: "test@gmail.com",
    password: "fast12345",
  };
  const response = await request.post("api/session").send(user);
  expect(response.status).toBe(200);
  token = response.body.id;
  console.log(response.body);
});

//API test#2 (Login with invalid credentials)
it("test case2", async () => {
  let user = {
    username: "test@gmail.com",
    password: "metabase@",
  };
  const response = await request.post("api/session").send(user);
  expect(response.status).toBe(401);
  console.log(response.body);
});

//API test#3 (Getting current user details without sending session token)
it("test case3", async () => {
  const response = await request.get(`api/user/current`);
  expect(response.status).toBe(401);
});
