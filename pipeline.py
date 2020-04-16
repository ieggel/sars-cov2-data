from sars_cov2_data.fetch.data_fetcher import DataFetcher
from sars_cov2_data.transform.to_csv_transformer import ToCsvTransformer

df = DataFetcher()
df.load_sources()

ct = ToCsvTransformer()
ct.transform()