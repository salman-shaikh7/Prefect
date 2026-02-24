from prefect import flow
import time
from prefect.docker import DockerImage

@flow(log_prints=True)
def buy():
    print("Buying security new")
    time.sleep(300)
    print("Flow END")

if __name__ == "__main__":
    buy.deploy(
        name="new-my-code-baked-into-an-image-deployment",
        work_pool_name="my-docker-pool",
        image="my-prefect-flow:latest",
        build=True,
        push=False,
        job_variables={
            "image_pull_policy": "Never"
        }
    )