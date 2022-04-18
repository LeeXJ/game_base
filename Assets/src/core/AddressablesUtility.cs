using System;
using UnityEngine;
using UnityEngine.AddressableAssets;

/// <summary>
/// A utility class for various Addressables functionality
/// </summary>
public static class AddressablesUtility
{
    /// <summary>
    /// Get the address of a given AssetReference.
    /// </summary>
    /// <param name="reference">The AssetReference you want to find the address of.</param>
    /// <returns>The address of a given AssetReference.</returns>
    public static string GetAddressFromAssetReference(AssetReference reference)
    {
        var loadResourceLocations = Addressables.LoadResourceLocationsAsync(reference);
        var result = loadResourceLocations.WaitForCompletion();
        if (result.Count > 0)
        {
            string key = result[0].PrimaryKey;
            Addressables.Release(loadResourceLocations);
            return key;
        }

        Addressables.Release(loadResourceLocations);
        return string.Empty;
    }

    public static byte[] GetBytesFromAssetReference(AssetReference reference)
    {
        var handle = reference.LoadAssetAsync<TextAsset>();
        var result = handle.WaitForCompletion();
        return result.bytes;
    }
   
    public static byte[] GetBytesFromAssetPath(string path)
    {
        var handle = Addressables.LoadAssetAsync<TextAsset>(path);
        var result = handle.WaitForCompletion();
        Addressables.Release(handle);
        return result.bytes;
    }
}

