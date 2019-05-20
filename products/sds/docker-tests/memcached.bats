#! /usr/bin/env bats

@test 'Memcached - stats' {
  run bash -c "echo 'stats' | nc ${SUT_IP} 6019"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
  [[ "${output}" =~ 'STAT uptime' ]]
}
