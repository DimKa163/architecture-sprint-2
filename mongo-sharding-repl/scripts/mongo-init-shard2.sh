docker compose exec -T shard2 mongosh --port 27019 <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard2:27019" },
        { _id : 1, host : "shard2_1:27022" },
        { _id : 2, host : "shard2_2:27024" },
        { _id : 3, host : "shard2_3:27026" }
      ]
    }
);
exit();
EOF;