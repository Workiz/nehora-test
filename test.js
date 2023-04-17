const { Octokit } = require('@octokit/core')


async function test(){
    // const GITHUB_TOKEN='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'
    const GITHUB_TOKEN= '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'
const client = new Octokit({
    auth: GITHUB_TOKEN
  })

  const owner='Workiz'
  const repo='nehora-test'
  const GITHUB_RUN_ID='4718386313'
  const resp = await client.request(
    'GET /repos/:owner/:repo/actions/runs/:run_id',
    {
      owner,
      repo,
      run_id: parseInt(GITHUB_RUN_ID)
    }
  )
  console.log(resp)
}

 test();
