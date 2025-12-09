using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.KeywordExtractor
{
    /// <summary>
    /// Query options for the Keyword Extractor API
    /// </summary>
    public class KeywordExtractorQueryOptions
    {
        /// <summary>
        /// The text to extract keywords from
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}
