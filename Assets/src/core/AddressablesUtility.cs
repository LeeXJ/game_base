using System;
using UnityEngine;
using UnityEngine.AddressableAssets;
using AsyncOperations = UnityEngine.ResourceManagement.AsyncOperations;

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

    public static byte[] GetBytesFromAssetPath(string path)
    {
        var handle = Addressables.LoadAssetAsync<TextAsset>(path);
        var result = handle.WaitForCompletion().bytes;
        Addressables.Release(handle);
        return result;
    }

    public static GameObject GetGameObjectFromAssetPath(string path)
    {
        var handle = Addressables.LoadAssetAsync<GameObject>(path);
        var result = handle.WaitForCompletion().gameObject;
        Addressables.Release(handle);
        return result;
    }

    // 生产预制体，返回addressable句柄
    public static AsyncOperations.AsyncOperationHandle<GameObject> Instantiate(string path, Transform parent)
    {
        var handle = Addressables.InstantiateAsync(path, parent);
        var result = handle.WaitForCompletion().gameObject;
        return handle;
    }
    // 释放addressable句柄
    public static void Release(AsyncOperations.AsyncOperationHandle<GameObject> handle)
    {
        Addressables.Release(handle);
    }
}

