package bank.balance.service

test_allowed_with_action_get {
    allow with input as {
                          "attributes": {
                            "request": {
                              "http": {
                                "method": "GET",
                                "path": "/balances",
                                "headers": {
                                  "authorization": "Bearer eyJhbGciOiAiSFMyNTYiLCAidHlwIjogIkpXVCJ9.eyJhdWQiOiBbInVzZXItZGF0YS1zZXJ2aWNlIiwgImJhbGFuY2Utc2VydmljZSIsICJ0cmFuc2Zlci1zZXJ2aWNlIl0sICJleHAiOiAxNTk4OTE4Mzk5LCAiaWF0IjogMTU5MzY0Nzk5OSwgImlzcyI6ICJodHRwczovL2FzLmNvbSIsICJuYW1lIjogIkpvaG4gRG9lIiwgInNjb3BlIjogInJlYWQgd3JpdGUiLCAic3ViIjogIjEyMzQ1Njc4OTAifQ.ycWU-BfbYLiInZzInFTrRdX3eOp0bq1RwNdFb2hubac"
                                }
                              }
                            }
                          }
                        }
}

test_not_allowed_with_invalid_token {
    not allow with input as {
                              "attributes": {
                                "request": {
                                "http": {
                                    "method": "PUT",
                                    "path": "/balances",
                                    "headers": {
                                    "authorization": "Bearer EyJhbGciOiAiSFMyNTYiLCAidHlwIjogIkpXVCJ9.eyJhdWQiOiBbInVzZXItZGF0YS1zZXJ2aWNlIiwgImJhbGFuY2Utc2VydmljZSIsICJ0cmFuc2Zlci1zZXJ2aWNlIl0sICJleHAiOiAxNTk4OTE4Mzk5LCAiaWF0IjogMTU5MzY0Nzk5OSwgImlzcyI6ICJodHRwczovL2FzLmNvbSIsICJuYW1lIjogIkpvaG4gRG9lIiwgInNjb3BlIjogInJlYWQgd3JpdGUiLCAic3ViIjogIjEyMzQ1Njc4OTAifQ.ycWU-BfbYLiInZzInFTrRdX3eOp0bq1RwNdFb2hubac"
                                    }
                                  }
                                }
                              }
                            }
}

test_not_allowed_with_invalid_action {
    not allow with input as {
                              "attributes": {
                                "request": {
                                "http": {
                                    "method": "DELETE",
                                    "path": "/balances",
                                    "headers": {
                                    "authorization": "Bearer eyJhbGciOiAiSFMyNTYiLCAidHlwIjogIkpXVCJ9.eyJhdWQiOiBbInVzZXItZGF0YS1zZXJ2aWNlIiwgImJhbGFuY2Utc2VydmljZSIsICJ0cmFuc2Zlci1zZXJ2aWNlIl0sICJleHAiOiAxNTk4OTE4Mzk5LCAiaWF0IjogMTU5MzY0Nzk5OSwgImlzcyI6ICJodHRwczovL2FzLmNvbSIsICJuYW1lIjogIkpvaG4gRG9lIiwgInNjb3BlIjogInJlYWQgd3JpdGUiLCAic3ViIjogIjEyMzQ1Njc4OTAifQ.ycWU-BfbYLiInZzInFTrRdX3eOp0bq1RwNdFb2hubac"
                                    }
                                  }
                                }
                              }
                            }
}