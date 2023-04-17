#!/bin/env node

// https:${SITE}/main/tape.php?aid=1229526&skp=0&pwd=
for (let i = 0; i < 2403; i += 24) {
  console.log(`wget 'https:${process.env.SITE}/main/tape.php?aid=1229526&skp=${i}&pwd='`);
}
