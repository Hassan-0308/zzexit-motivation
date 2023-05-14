/* eslint-disable no-undef */
jest.setTimeout(50000);

var supertest = require("supertest");
const request = supertest("http://localhost:3000/");

//API test#4 (Changing firstname of a loggedin user)
it("test case4", async () => {
  let user = {
    firstname: "Hasssssan",
  };
  const response = await request.post("api/session").send(user);
  expect(response.status).toBe(200);
  token = response.body.id;
  console.log(response.body);
});
//API test#5 (Changing Language of a loggedin user)
it("test case5", async () => {
  let user = {
    Language: "French",
  };
  const response = await request.post("api/session").send(user);
  expect(response.status).toBe(200);
  token = response.body.id;
  console.log(response.body);
});
//API test#6 (viewing history)
it("test case6", async () => {
  const response = await request.post("api/session/history");
  expect(response.status).toBe(200);
  token = response.body.id;
  console.log(response.body);
});
//API test#7 (fetching a database)
it("test case7", async () => {
  const response = await request("api/session/database");
  expect(response.status).toBe(200);
  console.log(response.body);
})
//API test#8 (searching existing tables and statistics)
it("test case8", async () => {
  let user={
    Search: "Products"
  }
  const response = await request.post("api/session/search").send(user);
  expect(response.status).toBe(200);
  console.log(response.body);
})
//API test#9 (searching for non-existing tables or statistics)
it("test case9", async () => {
  let user={
    Search: "hfgsdsAas"
  }
  const response = await request.post("api/session/search").send(user);
  expect(response.status).toBe(200);
  expect(response.body.id).toBe("undefined");
  console.log(response.body);
})