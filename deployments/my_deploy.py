from prefect import flow
from prefect_github.repository import GitHubRepository

if __name__ == "__main__":
    flow.from_source(
        source=GitHubRepository.load("prefect-repo-block"),
        entrypoint="flows/my_flow.py:my_flow",
    ).deploy(
        name="my-aci-deployment",
        work_pool_name="aci-push-pool",
        image="prefecthq/prefect:3-latest",
        build=False,
        push=False,
    )