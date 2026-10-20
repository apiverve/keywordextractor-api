from setuptools import setup, find_packages

setup(
    name='apiverve_keywordextractor',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Keyword Extractor is a keyword extraction API that scans raw text or live webpage URLs to extract key terms and their frequencies. It returns up to 50 unique keywords, occurrence counts, total keyword volume, and the top five terms with their percentage share.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/keywordextractor?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
