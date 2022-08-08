BEGIN{cnt = 0}
{cnt += $4 * $5}
END{print cnt}
