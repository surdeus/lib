BEGIN {cnt = 0}
{if($2 == "Debt") cnt += $4 * $5}
END{print cnt}
